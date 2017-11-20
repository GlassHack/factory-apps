.class final Lcom/google/common/base/am;
.super Lcom/google/common/base/aq;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/base/al;


# direct methods
.method constructor <init>(Lcom/google/common/base/al;Lcom/google/common/base/ak;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/google/common/base/am;->a:Lcom/google/common/base/al;

    invoke-direct {p0, p2, p3}, Lcom/google/common/base/aq;-><init>(Lcom/google/common/base/ak;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method final a(I)I
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/common/base/am;->a:Lcom/google/common/base/al;

    iget-object v0, v0, Lcom/google/common/base/al;->a:Lcom/google/common/base/c;

    iget-object v1, p0, Lcom/google/common/base/am;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, p1}, Lcom/google/common/base/c;->a(Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method final b(I)I
    .locals 1

    .prologue
    .line 153
    add-int/lit8 v0, p1, 0x1

    return v0
.end method
