.class Lcom/google/glass/setup/SetupUserAccountTask$1;
.super Ljava/lang/Object;
.source "SetupUserAccountTask.java"

# interfaces
.implements Lcom/google/glass/protobuf/ProtoParser$Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/setup/SetupUserAccountTask;->onPostExecute(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/glass/protobuf/ProtoParser$Provider",
        "<",
        "Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/setup/SetupUserAccountTask;


# direct methods
.method constructor <init>(Lcom/google/glass/setup/SetupUserAccountTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/setup/SetupUserAccountTask;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/google/glass/setup/SetupUserAccountTask$1;->this$0:Lcom/google/glass/setup/SetupUserAccountTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public provide()Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;
    .locals 1

    .prologue
    .line 98
    new-instance v0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;-><init>()V

    return-object v0
.end method

.method public bridge synthetic provide()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/google/glass/setup/SetupUserAccountTask$1;->provide()Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;

    move-result-object v0

    return-object v0
.end method
