.class final Lcom/google/common/io/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/io/an;


# instance fields
.field final synthetic a:Lcom/google/common/io/u;


# direct methods
.method constructor <init>(Lcom/google/common/io/u;)V
    .locals 0

    .prologue
    .line 498
    iput-object p1, p0, Lcom/google/common/io/x;->a:Lcom/google/common/io/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b()Ljava/io/Reader;
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/google/common/io/x;->a:Lcom/google/common/io/u;

    invoke-virtual {v0}, Lcom/google/common/io/u;->a()Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 498
    invoke-direct {p0}, Lcom/google/common/io/x;->b()Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method
