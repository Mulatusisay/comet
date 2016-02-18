package OPS

class Task {
    String taskName
    String description
    Date dueDate
    String priority

    String toString() {
        "${taskName}"
    }

    static constraints = {
        taskName()
        description()
        dueDate()
        priority()
    }
}
