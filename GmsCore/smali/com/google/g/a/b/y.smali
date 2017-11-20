.class public final Lcom/google/g/a/b/y;
.super Ljava/io/IOException;


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/g/a/b/y;->a:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/google/g/a/b/y;->a:I

    return v0
.end method
