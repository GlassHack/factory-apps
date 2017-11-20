.class Lcom/google/glass/tutorial/tutorials/AddContactsTutorial$1;
.super Landroid/database/ContentObserver;
.source "AddContactsTutorial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/tutorial/tutorials/AddContactsTutorial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/tutorial/tutorials/AddContactsTutorial;


# direct methods
.method constructor <init>(Lcom/google/glass/tutorial/tutorials/AddContactsTutorial;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/tutorial/tutorials/AddContactsTutorial;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/google/glass/tutorial/tutorials/AddContactsTutorial$1;->this$0:Lcom/google/glass/tutorial/tutorials/AddContactsTutorial;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/glass/tutorial/tutorials/AddContactsTutorial$1;->this$0:Lcom/google/glass/tutorial/tutorials/AddContactsTutorial;

    invoke-virtual {v0}, Lcom/google/glass/tutorial/tutorials/AddContactsTutorial;->refreshVisible()V

    .line 28
    iget-object v0, p0, Lcom/google/glass/tutorial/tutorials/AddContactsTutorial$1;->this$0:Lcom/google/glass/tutorial/tutorials/AddContactsTutorial;

    invoke-static {v0}, Lcom/google/glass/tutorial/tutorials/AddContactsTutorial;->access$000(Lcom/google/glass/tutorial/tutorials/AddContactsTutorial;)V

    .line 29
    return-void
.end method
