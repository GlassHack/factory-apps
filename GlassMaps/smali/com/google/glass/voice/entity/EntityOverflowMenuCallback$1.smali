.class Lcom/google/glass/voice/entity/EntityOverflowMenuCallback$1;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/entity/EntityOverflowMenuCallback;

.field final synthetic val$overflowMenu:Lcom/google/glass/voice/VoiceMenuDialog$OverflowMenu;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/entity/EntityOverflowMenuCallback;Lcom/google/glass/voice/VoiceMenuDialog$OverflowMenu;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/glass/voice/entity/EntityOverflowMenuCallback$1;->this$0:Lcom/google/glass/voice/entity/EntityOverflowMenuCallback;

    iput-object p2, p0, Lcom/google/glass/voice/entity/EntityOverflowMenuCallback$1;->val$overflowMenu:Lcom/google/glass/voice/VoiceMenuDialog$OverflowMenu;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 76
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/glass/voice/entity/EntityOverflowMenuCallback$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/glass/voice/entity/EntityOverflowMenuCallback$1;->this$0:Lcom/google/glass/voice/entity/EntityOverflowMenuCallback;

    iget-object v1, p0, Lcom/google/glass/voice/entity/EntityOverflowMenuCallback$1;->this$0:Lcom/google/glass/voice/entity/EntityOverflowMenuCallback;

    invoke-static {v1}, Lcom/google/glass/voice/entity/EntityOverflowMenuCallback;->access$000(Lcom/google/glass/voice/entity/EntityOverflowMenuCallback;)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, v0, Lcom/google/glass/voice/entity/EntityOverflowMenuCallback;->cursor:Landroid/database/Cursor;

    .line 80
    iget-object v0, p0, Lcom/google/glass/voice/entity/EntityOverflowMenuCallback$1;->this$0:Lcom/google/glass/voice/entity/EntityOverflowMenuCallback;

    iget-object v1, p0, Lcom/google/glass/voice/entity/EntityOverflowMenuCallback$1;->this$0:Lcom/google/glass/voice/entity/EntityOverflowMenuCallback;

    iget-object v1, v1, Lcom/google/glass/voice/entity/EntityOverflowMenuCallback;->cursor:Landroid/database/Cursor;

    const-string v2, "display_name"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/glass/voice/entity/EntityOverflowMenuCallback;->access$102(Lcom/google/glass/voice/entity/EntityOverflowMenuCallback;I)I

    .line 81
    iget-object v0, p0, Lcom/google/glass/voice/entity/EntityOverflowMenuCallback$1;->this$0:Lcom/google/glass/voice/entity/EntityOverflowMenuCallback;

    iget-object v1, p0, Lcom/google/glass/voice/entity/EntityOverflowMenuCallback$1;->this$0:Lcom/google/glass/voice/entity/EntityOverflowMenuCallback;

    iget-object v1, v1, Lcom/google/glass/voice/entity/EntityOverflowMenuCallback;->cursor:Landroid/database/Cursor;

    const-string v2, "protobuf_blob"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/glass/voice/entity/EntityOverflowMenuCallback;->access$202(Lcom/google/glass/voice/entity/EntityOverflowMenuCallback;I)I

    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 76
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/glass/voice/entity/EntityOverflowMenuCallback$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/glass/voice/entity/EntityOverflowMenuCallback$1;->val$overflowMenu:Lcom/google/glass/voice/VoiceMenuDialog$OverflowMenu;

    iget-object v1, p0, Lcom/google/glass/voice/entity/EntityOverflowMenuCallback$1;->this$0:Lcom/google/glass/voice/entity/EntityOverflowMenuCallback;

    invoke-interface {v0, v1}, Lcom/google/glass/voice/VoiceMenuDialog$OverflowMenu;->show(Lcom/google/glass/voice/VoiceMenuDialog$OverflowMenuCallback;)V

    .line 88
    return-void
.end method
