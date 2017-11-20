.class public Lcom/google/glass/protobuf/ProtoParser;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private provider:Lcom/google/glass/protobuf/ProtoParser$Provider;


# direct methods
.method public constructor <init>(Lcom/google/glass/protobuf/ProtoParser$Provider;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {p1}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iput-object p1, p0, Lcom/google/glass/protobuf/ProtoParser;->provider:Lcom/google/glass/protobuf/ProtoParser$Provider;

    .line 24
    return-void
.end method


# virtual methods
.method public parse([B)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/glass/protobuf/ProtoParser;->provider:Lcom/google/glass/protobuf/ProtoParser$Provider;

    invoke-interface {v0}, Lcom/google/glass/protobuf/ProtoParser$Provider;->provide()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/MessageNano;

    .line 28
    invoke-static {v0, p1}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    .line 29
    return-object v0
.end method
