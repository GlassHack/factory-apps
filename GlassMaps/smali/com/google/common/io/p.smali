.class final Lcom/google/common/io/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/io/an;


# instance fields
.field final synthetic a:Lcom/google/common/io/j;


# direct methods
.method constructor <init>(Lcom/google/common/io/j;)V
    .locals 0

    .prologue
    .line 956
    iput-object p1, p0, Lcom/google/common/io/p;->a:Lcom/google/common/io/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 960
    iget-object v0, p0, Lcom/google/common/io/p;->a:Lcom/google/common/io/j;

    invoke-virtual {v0}, Lcom/google/common/io/j;->a()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 956
    invoke-direct {p0}, Lcom/google/common/io/p;->b()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
