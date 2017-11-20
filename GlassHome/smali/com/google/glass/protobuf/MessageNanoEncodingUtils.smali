.class public final Lcom/google/glass/protobuf/MessageNanoEncodingUtils;
.super Ljava/lang/Object;
.source "MessageNanoEncodingUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lazyBase64String(Lcom/google/protobuf/nano/MessageNano;)Ljava/lang/Object;
    .locals 1
    .param p0, "proto"    # Lcom/google/protobuf/nano/MessageNano;

    .prologue
    .line 28
    new-instance v0, Lcom/google/glass/protobuf/MessageNanoEncodingUtils$1;

    invoke-direct {v0, p0}, Lcom/google/glass/protobuf/MessageNanoEncodingUtils$1;-><init>(Lcom/google/protobuf/nano/MessageNano;)V

    return-object v0
.end method
