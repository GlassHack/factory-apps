.class Lcom/google/glass/note/NoteManager$1;
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
    .line 155
    iput-object p1, p0, Lcom/google/glass/note/NoteManager$1;->this$0:Lcom/google/glass/note/NoteManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 158
    iget-object v1, p0, Lcom/google/glass/note/NoteManager$1;->this$0:Lcom/google/glass/note/NoteManager;

    invoke-static {v1}, Lcom/google/glass/note/NoteManager;->access$100(Lcom/google/glass/note/NoteManager;)Lcom/google/glass/note/NoteManager$Request;

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const/4 v0, 0x0

    .line 162
    .local v0, "cancelled":Z
    iget-object v1, p0, Lcom/google/glass/note/NoteManager$1;->this$0:Lcom/google/glass/note/NoteManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/glass/note/NoteManager;->access$200(Lcom/google/glass/note/NoteManager;Z)V

    .line 163
    return-void
.end method
