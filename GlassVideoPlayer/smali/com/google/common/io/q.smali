.class final Lcom/google/common/io/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/io/as;


# instance fields
.field final synthetic a:Lcom/google/common/io/g;


# direct methods
.method constructor <init>(Lcom/google/common/io/g;)V
    .locals 0

    .prologue
    .line 967
    iput-object p1, p0, Lcom/google/common/io/q;->a:Lcom/google/common/io/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 971
    iget-object v0, p0, Lcom/google/common/io/q;->a:Lcom/google/common/io/g;

    invoke-virtual {v0}, Lcom/google/common/io/g;->a()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 967
    invoke-direct {p0}, Lcom/google/common/io/q;->b()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method
