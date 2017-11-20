.class Lcom/google/glass/note/NoteManager$2;
.super Ljava/lang/Object;
.source "NoteManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/note/NoteManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/note/NoteManager;


# direct methods
.method constructor <init>(Lcom/google/glass/note/NoteManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/note/NoteManager;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/google/glass/note/NoteManager$2;->this$0:Lcom/google/glass/note/NoteManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/glass/note/NoteManager$2;->this$0:Lcom/google/glass/note/NoteManager;

    invoke-static {v0}, Lcom/google/glass/note/NoteManager;->access$100(Lcom/google/glass/note/NoteManager;)Lcom/google/glass/note/NoteManager$Request;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v0, p0, Lcom/google/glass/note/NoteManager$2;->this$0:Lcom/google/glass/note/NoteManager;

    invoke-static {v0}, Lcom/google/glass/note/NoteManager;->access$300(Lcom/google/glass/note/NoteManager;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Showing new note. [Request=%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/note/NoteManager$2;->this$0:Lcom/google/glass/note/NoteManager;

    invoke-static {v4}, Lcom/google/glass/note/NoteManager;->access$100(Lcom/google/glass/note/NoteManager;)Lcom/google/glass/note/NoteManager$Request;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    iget-object v0, p0, Lcom/google/glass/note/NoteManager$2;->this$0:Lcom/google/glass/note/NoteManager;

    invoke-static {v0}, Lcom/google/glass/note/NoteManager;->access$100(Lcom/google/glass/note/NoteManager;)Lcom/google/glass/note/NoteManager$Request;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/note/NoteManager$Request;->access$400(Lcom/google/glass/note/NoteManager$Request;)V

    .line 174
    invoke-static {}, Lcom/google/glass/note/NoteManager;->access$500()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/note/NoteManager$2;->this$0:Lcom/google/glass/note/NoteManager;

    iget-object v1, v1, Lcom/google/glass/note/NoteManager;->hideCurrentNoteRunnable:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/google/glass/note/NoteManager$2;->this$0:Lcom/google/glass/note/NoteManager;

    invoke-static {v2}, Lcom/google/glass/note/NoteManager;->access$100(Lcom/google/glass/note/NoteManager;)Lcom/google/glass/note/NoteManager$Request;

    move-result-object v2

    iget-object v2, v2, Lcom/google/glass/note/NoteManager$Request;->type:Lcom/google/glass/note/NoteManager$Type;

    invoke-virtual {v2}, Lcom/google/glass/note/NoteManager$Type;->getDuration()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 175
    iget-object v0, p0, Lcom/google/glass/note/NoteManager$2;->this$0:Lcom/google/glass/note/NoteManager;

    iget-object v1, p0, Lcom/google/glass/note/NoteManager$2;->this$0:Lcom/google/glass/note/NoteManager;

    invoke-static {v1}, Lcom/google/glass/note/NoteManager;->access$600(Lcom/google/glass/note/NoteManager;)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/note/NoteManager$2;->this$0:Lcom/google/glass/note/NoteManager;

    invoke-static {v2}, Lcom/google/glass/note/NoteManager;->access$100(Lcom/google/glass/note/NoteManager;)Lcom/google/glass/note/NoteManager$Request;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/note/NoteManager;->incrementView(Landroid/content/SharedPreferences;Lcom/google/glass/note/NoteManager$Request;)V

    .line 176
    return-void
.end method
