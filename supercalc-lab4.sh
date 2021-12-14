function parseOperand () {
    if [[ ("$1" =~ ^[Pp]+[Ll]+[YyUu]+[SsCc]$) || ($1 = "+") ]]; then                      # plus/plyc/...
        return "+"
    elif [[ ("$1" =~ ^[Mm]+[IiEe]+[Nn]+[YyUu]+[SsCc]$) || ($1 = "-") ]]; then             # minus/minuc/...
        return "-"
    elif [[ ("$1" =~ ^[YyUu]+[Mm]+[Nn]+[OoAa]+[ZzCc]+[Hh]+[Ii]+[Tt]+(\'|)$) || ($1 = "\*") ]]; then                           # ymnozhit/umnozhit'/...
        return "\*"
    elif [[ ("$1" =~ ^[Rr]+[AaOo]+[SsCcZz]+[Dd]+[IiEe]+[Ll]+[Ii]+[Tt]+(\'|)$) || ($1 = "/") ]]; then                           # razdelit/rostelit'/...
        return "/"
    else 
        return -1
    fi
}

function parseNumber () {
    if [[ ("$1" =~ ^[Nn]+[Oo]+[Ll]+(\'|)$) || ($1 = 0) ]]; then                         # nol/nol'
        return 0
    elif [[ ("$1" =~ ^[AaOo]+[DdTt]+[Ii]+[Nn]$) || ($1 = 1) ]]; then                    # odin/ODIN/aTin/AdIn/...
        return 1
    elif [[ ("$1" =~ ^[DdTt]+[Vv]+[Aa]$) || ($1 = 2) ]]; then                           # Tva/Dva/dVa/...
        return 2
    elif [[ ("$1" =~ ^[Tt]+[Rr]+[IiEe]$) || ($1 = 3) ]]; then                           # Tri/Tre/Tree/...
        return 3
    elif [[ ("$1" =~ ^[Cc]+[Hh]+[EeIi]+[Tt]+[EeIi]+[Rr]+[EeIi]$) || ($1 = 4) ]]; then   # cHiTire/chetire/...
        return 4
    elif [[ ("$1" =~ ^[Pp]+[Yy]+[Aa]+[Tt]+(\'|)$) || ($1 = 5) ]]; then                  # pyat/pyat'/...
        return 5 
    elif [[ ("$1" =~ ^[Ss]+[Hh]+[Ee]+[Ss]+[Tt]+(\'|)$) || ($1 = 6) ]]; then             # shest/shest'/...
        return 6
    elif [[ ("$1" =~ ^[Ss]+[Ee]+[Mm]+(\'|)$) || ($1 = 7) ]]; then                       # sem/sem'/...
        return 7
    elif [[ ("$1" =~ ^[Vv]+[Oo]+[Ss]+[EeIi]+[Mm]+(\'|)$) || ($1 = 8) ]]; then           # vosem/vosim'/...
        return 8
    elif [[ ("$1" =~ ^[Dd]+[Ee]+[Vv]+[YyAa]+[Tt]+(\'|)$) || ($1 = 9) ]]; then           # devyat'/devat'/devyt/...
        return 9
    else 
        return -1
    fi
}

echo "Enter an expression:"
read a operand b

parseOperand $operand
operand=$?
parseNumber $a
a=$?
parseNumber $b
b=$?

if [[ $a != -1 && $b != -1 && $operand != -1 ]]; then
    echo "Answer is $(expr $a "$operand" $b)"
else
    echo "Oooops, can't recognize numbers, try again"
fi
