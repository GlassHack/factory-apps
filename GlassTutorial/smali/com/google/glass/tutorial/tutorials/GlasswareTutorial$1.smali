.class Lcom/google/glass/tutorial/tutorials/GlasswareTutorial$1;
.super Landroid/database/ContentObserver;
.source "GlasswareTutorial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/tutorial/tutorials/GlasswareTutorial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/tutorial/tutorials/GlasswareTutorial;


# direct methods
.method constructor <init>(Lcom/google/glass/tutorial/tutorials/GlasswareTutorial;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/tutorial/tutorials/GlasswareTutorial;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/google/glass/tutorial/tutorials/GlasswareTutorial$1;->this$0:Lcom/google/glass/tutorial/tutorials/GlasswareTutorial;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/glass/tutorial/tutorials/GlasswareTutorial$1;->this$0:Lcom/google/glass/tutorial/tutorials/GlasswareTutorial;

    invoke-static {v0}, Lcom/google/glass/tutorial/tutorials/GlasswareTutorial;->access$000(Lcom/google/glass/tutorial/tutorials/GlasswareTutorial;)V

    .line 21
    return-void
.end method
