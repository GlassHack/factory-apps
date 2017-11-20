.class final Lcom/google/c/a/ao;
.super Lcom/google/c/a/at;
.source "SourceFile"


# instance fields
.field final synthetic b:Lcom/google/c/a/an;


# direct methods
.method constructor <init>(Lcom/google/c/a/an;Lcom/google/c/a/am;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/google/c/a/ao;->b:Lcom/google/c/a/an;

    invoke-direct {p0, p2, p3}, Lcom/google/c/a/at;-><init>(Lcom/google/c/a/am;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method final a(I)I
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/c/a/ao;->b:Lcom/google/c/a/an;

    iget-object v0, v0, Lcom/google/c/a/an;->a:Lcom/google/c/a/e;

    iget-object v1, p0, Lcom/google/c/a/ao;->c:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, p1}, Lcom/google/c/a/e;->a(Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method final b(I)I
    .locals 1

    .prologue
    .line 150
    add-int/lit8 v0, p1, 0x1

    return v0
.end method
