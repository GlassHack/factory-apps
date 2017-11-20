.class Lcom/google/glass/entity/EntityItemView$1;
.super Landroid/os/AsyncTask;
.source "EntityItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/entity/EntityItemView;->bind(Ljava/lang/String;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/entity/EntityItemView;

.field final synthetic val$protobuf:[B


# direct methods
.method constructor <init>(Lcom/google/glass/entity/EntityItemView;[B)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/entity/EntityItemView;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/google/glass/entity/EntityItemView$1;->this$0:Lcom/google/glass/entity/EntityItemView;

    iput-object p2, p0, Lcom/google/glass/entity/EntityItemView$1;->val$protobuf:[B

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/glass/entity/EntityItemView$1;->val$protobuf:[B

    invoke-static {v0}, Lcom/google/glass/entity/EntityUtils;->fromProtoByteArray([B)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 73
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/glass/entity/EntityItemView$1;->doInBackground([Ljava/lang/Void;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V
    .locals 1
    .param p1, "result"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/glass/entity/EntityItemView$1;->this$0:Lcom/google/glass/entity/EntityItemView;

    invoke-static {v0, p1}, Lcom/google/glass/entity/EntityItemView;->access$002(Lcom/google/glass/entity/EntityItemView;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 82
    iget-object v0, p0, Lcom/google/glass/entity/EntityItemView$1;->this$0:Lcom/google/glass/entity/EntityItemView;

    invoke-static {v0}, Lcom/google/glass/entity/EntityItemView;->access$100(Lcom/google/glass/entity/EntityItemView;)V

    .line 83
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 73
    check-cast p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-virtual {p0, p1}, Lcom/google/glass/entity/EntityItemView$1;->onPostExecute(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V

    return-void
.end method
