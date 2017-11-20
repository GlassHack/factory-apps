.class public final Lcom/google/j/b/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/io/DataInputStream;

.field public b:Lcom/google/j/f;


# direct methods
.method public constructor <init>(Ljava/io/DataInputStream;)V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/google/j/b/l;->a:Ljava/io/DataInputStream;

    .line 39
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 41
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 42
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unrecognised protocol version"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    return-void
.end method
