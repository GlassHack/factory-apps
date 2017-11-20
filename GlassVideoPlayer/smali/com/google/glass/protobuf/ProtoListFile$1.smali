.class Lcom/google/glass/protobuf/ProtoListFile$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/protobuf/ProtoListFile;


# direct methods
.method constructor <init>(Lcom/google/glass/protobuf/ProtoListFile;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/google/glass/protobuf/ProtoListFile$1;->this$0:Lcom/google/glass/protobuf/ProtoListFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/glass/protobuf/ProtoListFile$1;->this$0:Lcom/google/glass/protobuf/ProtoListFile;

    invoke-virtual {v0}, Lcom/google/glass/protobuf/ProtoListFile;->flushWrites()V

    .line 90
    return-void
.end method
