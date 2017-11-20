.class public Lcom/google/n/b/e/a/b;
.super Lcom/google/n/b/b/a;
.source "SourceFile"


# instance fields
.field private n:Lcom/google/n/b/e/a/a;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/n/b/b/a;-><init>()V

    .line 24
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/google/n/b/e/a/b;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/google/n/b/e/a/a;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/google/n/b/e/a/b;->n:Lcom/google/n/b/e/a/a;

    .line 32
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/google/n/b/e/a/b;->p:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public final a(Ljava/lang/StringBuffer;)V
    .locals 0

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/google/n/b/b/a;->a(Ljava/lang/StringBuffer;)V

    .line 52
    return-void
.end method

.method public final b()Lcom/google/n/b/e/a/a;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/n/b/e/a/b;->n:Lcom/google/n/b/e/a/a;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/google/n/b/e/a/b;->o:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/n/b/e/a/b;->o:Ljava/lang/String;

    return-object v0
.end method
