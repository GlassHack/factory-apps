.class public final Lcom/google/n/b/a/d;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 39
    iput p2, p0, Lcom/google/n/b/a/d;->a:I

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/n/b/a/d;->b:Ljava/io/InputStream;

    .line 41
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/google/n/b/a/d;->a:I

    return v0
.end method
