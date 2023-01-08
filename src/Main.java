public class Main {
    public static void main(String[] args) {
        String str = "12.843";
        double dbl = Double.parseDouble(str);

        System.out.println(Math.round(dbl));
    }

    public static class Robot {
        public static int robotCounter;
        public int id;
        public String model;
        public int productionYear;
        public static String vendor = "BekSoft";

        public Robot(String model, int prodationYear) {
            this.model = model;
            this.productionYear = prodationYear;
            this.id = ++robotCounter;
        }

        public void displayInformation(){
            System.out.printf("Я %d-й из %d роботов. Модель: %s. Произведен компанией %s в %d году.\n",
                    id, robotCounter, model, vendor, productionYear);
        }

        public void method(String model){
            this.model = model;
        }
    }
}