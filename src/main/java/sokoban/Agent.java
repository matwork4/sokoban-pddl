package sokoban;


public class Agent {
    public static void main(String[] args) {

        //D = down, U = up, L = left, R = right
        //String solution = "RDDLLLUUURRDRUDDDLUUDDLLUR"; //(exemple)
        String solution = getSolution();
        for (char c : solution.toCharArray()) System.out.println(c);
    }

    public static String getSolution(){

        //---------------------------------------------------------------
        //COPIER COLLER LE PLAN SOLUTION ICI (exemple ci-contre du niveau 1)
        String planSolution = "00: (    moveright b43 b44) [0]\n" +
                "01: (   movebottom b44 b54) [0]\n" +
                "02: (   movebottom b54 b64) [0]\n" +
                "03: (     moveleft b64 b63) [0]\n" +
                "04: (     moveleft b63 b62) [0]\n" +
                "05: (     moveleft b62 b61) [0]\n" +
                "06: (      movetop b61 b51) [0]\n" +
                "07: (      movetop b51 b41) [0]\n" +
                "08: (      movetop b41 b31) [0]\n" +
                "09: (    moveright b31 b32) [0]\n" +
                "10: (pushright b32 b33 b34) [0]\n" +
                "11: (   movebottom b33 b43) [0]\n" +
                "12: (    moveright b43 b44) [0]\n" +
                "13: (  pushtop b44 b34 b24) [0]\n" +
                "14: (   movebottom b34 b44) [0]\n" +
                "15: (   movebottom b44 b54) [0]\n" +
                "16: (   movebottom b54 b64) [0]\n" +
                "17: (     moveleft b64 b63) [0]\n" +
                "18: (  pushtop b63 b53 b43) [0]\n" +
                "19: (  pushtop b53 b43 b33) [0]\n" +
                "20: (   movebottom b43 b53) [0]\n" +
                "21: (   movebottom b53 b63) [0]\n" +
                "22: (     moveleft b63 b62) [0]\n" +
                "23: (     moveleft b62 b61) [0]\n" +
                "24: (      movetop b61 b51) [0]\n" +
                "25: (pushright b51 b52 b53) [0]";

        //---------------------------------------------------------------
        /* Decriptage du plan en chaine de caractères
         *
         */
        String p = planSolution;
        String solution = "";
        for(int i=0; i<p.length()-8;i++){
            //cherche les chaines de caractères "top" "bot" "lef" "rig"
            if(p.charAt(i)=="t".charAt(0) && p.charAt(i+1)=="o".charAt(0) && p.charAt(i+2)=="p".charAt(0) ){
                solution = solution + "U";
            }else if(p.charAt(i)=="b".charAt(0) && p.charAt(i+1)=="o".charAt(0) && p.charAt(i+2)=="t".charAt(0)){
                solution = solution + "D";
            }else if(p.charAt(i)=="l".charAt(0) && p.charAt(i+1)=="e".charAt(0) && p.charAt(i+2)=="f".charAt(0)){
                solution = solution + "L";
            }else if(p.charAt(i)=="r".charAt(0) && p.charAt(i+1)=="i".charAt(0) && p.charAt(i+2)=="g".charAt(0)){
                solution = solution + "R";
            }
        }

        return solution;
    }
}
