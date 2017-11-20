.class public final Lcom/google/c/a/am;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/c/a/e;

.field public final b:Z

.field public final c:Lcom/google/c/a/au;

.field public final d:I


# direct methods
.method private constructor <init>(Lcom/google/c/a/au;)V
    .locals 3

    .prologue
    .line 105
    const/4 v0, 0x0

    sget-object v1, Lcom/google/c/a/e;->n:Lcom/google/c/a/e;

    const v2, 0x7fffffff

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/c/a/am;-><init>(Lcom/google/c/a/au;ZLcom/google/c/a/e;I)V

    .line 106
    return-void
.end method

.method public constructor <init>(Lcom/google/c/a/au;ZLcom/google/c/a/e;I)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/google/c/a/am;->c:Lcom/google/c/a/au;

    .line 111
    iput-boolean p2, p0, Lcom/google/c/a/am;->b:Z

    .line 112
    iput-object p3, p0, Lcom/google/c/a/am;->a:Lcom/google/c/a/e;

    .line 113
    iput p4, p0, Lcom/google/c/a/am;->d:I

    .line 114
    return-void
.end method

.method public static a(C)Lcom/google/c/a/am;
    .locals 3

    .prologue
    .line 125
    invoke-static {p0}, Lcom/google/c/a/e;->a(C)Lcom/google/c/a/e;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/c/a/am;

    new-instance v2, Lcom/google/c/a/an;

    invoke-direct {v2, v0}, Lcom/google/c/a/an;-><init>(Lcom/google/c/a/e;)V

    invoke-direct {v1, v2}, Lcom/google/c/a/am;-><init>(Lcom/google/c/a/au;)V

    return-object v1
.end method

.method static synthetic a(Lcom/google/c/a/am;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/c/a/am;->c:Lcom/google/c/a/au;

    invoke-interface {v0, p0, p1}, Lcom/google/c/a/au;->a(Lcom/google/c/a/am;Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/c/a/am;
    .locals 5

    .prologue
    .line 302
    new-instance v0, Lcom/google/c/a/am;

    iget-object v1, p0, Lcom/google/c/a/am;->c:Lcom/google/c/a/au;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/c/a/am;->a:Lcom/google/c/a/e;

    iget v4, p0, Lcom/google/c/a/am;->d:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/c/a/am;-><init>(Lcom/google/c/a/au;ZLcom/google/c/a/e;I)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/c/a/as;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 393
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "The separator may not be the empty string."

    invoke-static {v0, v2}, Lcom/google/c/a/ah;->a(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/c/a/am;

    new-instance v2, Lcom/google/c/a/ap;

    invoke-direct {v2, p1}, Lcom/google/c/a/ap;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lcom/google/c/a/am;-><init>(Lcom/google/c/a/au;)V

    new-instance v2, Lcom/google/c/a/as;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/c/a/as;-><init>(Lcom/google/c/a/am;Lcom/google/c/a/am;B)V

    return-object v2

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public final a(Ljava/lang/CharSequence;)Ljava/lang/Iterable;
    .locals 1

    .prologue
    .line 371
    invoke-static {p1}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    new-instance v0, Lcom/google/c/a/ar;

    invoke-direct {v0, p0, p1}, Lcom/google/c/a/ar;-><init>(Lcom/google/c/a/am;Ljava/lang/CharSequence;)V

    return-object v0
.end method
