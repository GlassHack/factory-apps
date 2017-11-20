.class final Lcom/google/glass/protobuf/ProtoDebugUtils$1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic val$object:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/google/glass/protobuf/ProtoDebugUtils$1;->val$object:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/glass/protobuf/ProtoDebugUtils$1;->val$object:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/glass/protobuf/ProtoDebugUtils;->asciiDebug(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
