.class public final Lcom/google/j/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/j/g;


# instance fields
.field private a:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/google/j/d;->a:[B

    .line 24
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 31
    return-void
.end method

.method public final s_()I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/j/d;->a:[B

    array-length v0, v0

    return v0
.end method

.method public final t_()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/google/j/d;->a:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method
