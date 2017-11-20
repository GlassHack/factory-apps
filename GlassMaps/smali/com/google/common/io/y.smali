.class final Lcom/google/common/io/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/io/as;


# instance fields
.field final synthetic a:Lcom/google/common/io/t;


# direct methods
.method constructor <init>(Lcom/google/common/io/t;)V
    .locals 0

    .prologue
    .line 508
    iput-object p1, p0, Lcom/google/common/io/y;->a:Lcom/google/common/io/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b()Ljava/io/Writer;
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/google/common/io/y;->a:Lcom/google/common/io/t;

    invoke-virtual {v0}, Lcom/google/common/io/t;->a()Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 508
    invoke-direct {p0}, Lcom/google/common/io/y;->b()Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method
