.class Lcom/a/a/a/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field static final synthetic a:Z


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/a/a/a/m;

.field private e:Ljava/util/List;

.field private f:Ljava/util/List;

.field private g:Lcom/a/a/b/d;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/a/a/a/m;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/a/a/a/m;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/a/a/b/d;)V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/a/a/a/m;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/a/a/b/d;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/a/a/b/d;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object v0, p0, Lcom/a/a/a/m;->e:Ljava/util/List;

    .line 49
    iput-object v0, p0, Lcom/a/a/a/m;->f:Ljava/util/List;

    .line 51
    iput-object v0, p0, Lcom/a/a/a/m;->g:Lcom/a/a/b/d;

    .line 75
    iput-object p1, p0, Lcom/a/a/a/m;->b:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lcom/a/a/a/m;->c:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Lcom/a/a/a/m;->g:Lcom/a/a/b/d;

    .line 78
    return-void
.end method

.method private static a(Ljava/util/List;Ljava/lang/String;)Lcom/a/a/a/m;
    .locals 3

    .prologue
    .line 877
    if-eqz p0, :cond_1

    .line 879
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 881
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/m;

    .line 882
    iget-object v2, v0, Lcom/a/a/a/m;->b:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 888
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 899
    const-string v0, "[]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/a/a/a/m;->a(Ljava/lang/String;)Lcom/a/a/a/m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 902
    new-instance v0, Lcom/a/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Duplicate property or field node \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xcb

    invoke-direct {v0, v1, v2}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 905
    :cond_0
    return-void
.end method

.method private r()V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/a/a/a/m;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/a/m;->e:Ljava/util/List;

    .line 203
    :cond_0
    return-void
.end method

.method private s()Z
    .locals 2

    .prologue
    .line 805
    const-string v0, "xml:lang"

    iget-object v1, p0, Lcom/a/a/a/m;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private t()Z
    .locals 2

    .prologue
    .line 814
    const-string v0, "rdf:type"

    iget-object v1, p0, Lcom/a/a/a/m;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private u()Ljava/util/List;
    .locals 2

    .prologue
    .line 825
    iget-object v0, p0, Lcom/a/a/a/m;->e:Ljava/util/List;

    if-nez v0, :cond_0

    .line 827
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/a/a/a/m;->e:Ljava/util/List;

    .line 829
    :cond_0
    iget-object v0, p0, Lcom/a/a/a/m;->e:Ljava/util/List;

    return-object v0
.end method

.method private v()Ljava/util/List;
    .locals 2

    .prologue
    .line 847
    iget-object v0, p0, Lcom/a/a/a/m;->f:Ljava/util/List;

    if-nez v0, :cond_0

    .line 849
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/a/a/a/m;->f:Ljava/util/List;

    .line 851
    :cond_0
    iget-object v0, p0, Lcom/a/a/a/m;->f:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/a/a/a/m;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/a/a/a/m;->d:Lcom/a/a/a/m;

    return-object v0
.end method

.method public final a(I)Lcom/a/a/a/m;
    .locals 2

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/a/a/a/m;->u()Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/m;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lcom/a/a/a/m;
    .locals 1

    .prologue
    .line 232
    invoke-direct {p0}, Lcom/a/a/a/m;->u()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/a/a/a/m;->a(Ljava/util/List;Ljava/lang/String;)Lcom/a/a/a/m;

    move-result-object v0

    return-object v0
.end method

.method public final a(ILcom/a/a/a/m;)V
    .locals 2

    .prologue
    .line 163
    iput-object p0, p2, Lcom/a/a/a/m;->d:Lcom/a/a/a/m;

    .line 164
    invoke-direct {p0}, Lcom/a/a/a/m;->u()Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 165
    return-void
.end method

.method public final a(Lcom/a/a/a/m;)V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p1, Lcom/a/a/a/m;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/a/a/a/m;->e(Ljava/lang/String;)V

    .line 134
    iput-object p0, p1, Lcom/a/a/a/m;->d:Lcom/a/a/a/m;

    .line 135
    invoke-direct {p0}, Lcom/a/a/a/m;->u()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    return-void
.end method

.method public final a(Lcom/a/a/b/d;)V
    .locals 0

    .prologue
    .line 557
    iput-object p1, p0, Lcom/a/a/a/m;->g:Lcom/a/a/b/d;

    .line 558
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 575
    iput-boolean p1, p0, Lcom/a/a/a/m;->h:Z

    .line 576
    return-void
.end method

.method public final b(Ljava/lang/String;)Lcom/a/a/a/m;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/a/a/a/m;->f:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/a/a/a/m;->a(Ljava/util/List;Ljava/lang/String;)Lcom/a/a/a/m;

    move-result-object v0

    return-object v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/a/m;->e:Ljava/util/List;

    .line 212
    return-void
.end method

.method public final b(I)V
    .locals 2

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/a/a/a/m;->u()Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 175
    invoke-direct {p0}, Lcom/a/a/a/m;->r()V

    .line 176
    return-void
.end method

.method public final b(Lcom/a/a/a/m;)V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p1, Lcom/a/a/a/m;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/a/a/a/m;->e(Ljava/lang/String;)V

    .line 150
    iput-object p0, p1, Lcom/a/a/a/m;->d:Lcom/a/a/a/m;

    .line 151
    invoke-direct {p0}, Lcom/a/a/a/m;->u()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 152
    return-void
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 593
    iput-boolean p1, p0, Lcom/a/a/a/m;->i:Z

    .line 594
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/a/a/a/m;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/a/m;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(I)Lcom/a/a/a/m;
    .locals 2

    .prologue
    .line 242
    invoke-direct {p0}, Lcom/a/a/a/m;->v()Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/m;

    return-object v0
.end method

.method public final c(Lcom/a/a/a/m;)V
    .locals 1

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/a/a/a/m;->u()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 188
    invoke-direct {p0}, Lcom/a/a/a/m;->r()V

    .line 189
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 516
    iput-object p1, p0, Lcom/a/a/a/m;->b:Ljava/lang/String;

    .line 517
    return-void
.end method

.method public final c(Z)V
    .locals 0

    .prologue
    .line 611
    iput-boolean p1, p0, Lcom/a/a/a/m;->j:Z

    .line 612
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 427
    :try_start_0
    new-instance v0, Lcom/a/a/b/d;

    invoke-virtual {p0}, Lcom/a/a/a/m;->l()Lcom/a/a/b/d;

    move-result-object v1

    iget v1, v1, Lcom/a/a/b/b;->a:I

    invoke-direct {v0, v1}, Lcom/a/a/b/d;-><init>(I)V
    :try_end_0
    .catch Lcom/a/a/b; {:try_start_0 .. :try_end_0} :catch_1

    .line 435
    :goto_0
    new-instance v1, Lcom/a/a/a/m;

    iget-object v2, p0, Lcom/a/a/a/m;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/a/a/a/m;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/a/a/a/m;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/a/a/b/d;)V

    .line 436
    :try_start_1
    invoke-virtual {p0}, Lcom/a/a/a/m;->g()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/m;

    invoke-virtual {v0}, Lcom/a/a/a/m;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/m;

    invoke-virtual {v1, v0}, Lcom/a/a/a/m;->a(Lcom/a/a/a/m;)V
    :try_end_1
    .catch Lcom/a/a/b; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v0, Lcom/a/a/a/m;->a:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 432
    :catch_1
    move-exception v0

    new-instance v0, Lcom/a/a/b/d;

    invoke-direct {v0}, Lcom/a/a/b/d;-><init>()V

    goto :goto_0

    .line 436
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Lcom/a/a/a/m;->i()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/m;

    invoke-virtual {v0}, Lcom/a/a/a/m;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/m;

    invoke-virtual {v1, v0}, Lcom/a/a/a/m;->d(Lcom/a/a/a/m;)V
    :try_end_2
    .catch Lcom/a/a/b; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 438
    :cond_1
    return-object v1
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 491
    invoke-virtual {p0}, Lcom/a/a/a/m;->l()Lcom/a/a/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/b/d;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/a/a/a/m;->c:Ljava/lang/String;

    check-cast p1, Lcom/a/a/a/m;

    iget-object v1, p1, Lcom/a/a/a/m;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 497
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/a/m;->b:Ljava/lang/String;

    check-cast p1, Lcom/a/a/a/m;

    iget-object v1, p1, Lcom/a/a/a/m;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/a/a/a/m;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/a/m;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d(Lcom/a/a/a/m;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 264
    iget-object v2, p1, Lcom/a/a/a/m;->b:Ljava/lang/String;

    const-string v3, "[]"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/a/a/a/m;->b(Ljava/lang/String;)Lcom/a/a/a/m;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v0, Lcom/a/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Duplicate \'"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' qualifier"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xcb

    invoke-direct {v0, v1, v2}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 265
    :cond_0
    iput-object p0, p1, Lcom/a/a/a/m;->d:Lcom/a/a/a/m;

    .line 266
    invoke-virtual {p1}, Lcom/a/a/a/m;->l()Lcom/a/a/b/d;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3, v1}, Lcom/a/a/b/d;->a(IZ)V

    .line 267
    invoke-virtual {p0}, Lcom/a/a/a/m;->l()Lcom/a/a/b/d;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/a/a/b/d;->a(Z)Lcom/a/a/b/d;

    .line 270
    invoke-direct {p1}, Lcom/a/a/a/m;->s()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 273
    iget-object v2, p0, Lcom/a/a/a/m;->g:Lcom/a/a/b/d;

    invoke-virtual {v2, v1}, Lcom/a/a/b/d;->b(Z)Lcom/a/a/b/d;

    .line 274
    invoke-direct {p0}, Lcom/a/a/a/m;->v()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 289
    :goto_0
    return-void

    .line 276
    :cond_1
    invoke-direct {p1}, Lcom/a/a/a/m;->t()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 279
    iget-object v2, p0, Lcom/a/a/a/m;->g:Lcom/a/a/b/d;

    invoke-virtual {v2, v1}, Lcom/a/a/b/d;->c(Z)Lcom/a/a/b/d;

    .line 280
    invoke-direct {p0}, Lcom/a/a/a/m;->v()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/a/a/a/m;->g:Lcom/a/a/b/d;

    invoke-virtual {v3}, Lcom/a/a/b/d;->b()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    invoke-interface {v2, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 287
    :cond_3
    invoke-direct {p0}, Lcom/a/a/a/m;->v()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 534
    iput-object p1, p0, Lcom/a/a/a/m;->c:Ljava/lang/String;

    .line 535
    return-void
.end method

.method public final d(Z)V
    .locals 0

    .prologue
    .line 629
    iput-boolean p1, p0, Lcom/a/a/a/m;->k:Z

    .line 630
    return-void
.end method

.method public final e()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 325
    invoke-virtual {p0}, Lcom/a/a/a/m;->l()Lcom/a/a/b/d;

    move-result-object v0

    .line 327
    invoke-virtual {v0, v1}, Lcom/a/a/b/d;->a(Z)Lcom/a/a/b/d;

    .line 328
    invoke-virtual {v0, v1}, Lcom/a/a/b/d;->b(Z)Lcom/a/a/b/d;

    .line 329
    invoke-virtual {v0, v1}, Lcom/a/a/b/d;->c(Z)Lcom/a/a/b/d;

    .line 330
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/a/m;->f:Ljava/util/List;

    .line 331
    return-void
.end method

.method public final e(Lcom/a/a/a/m;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 298
    invoke-virtual {p0}, Lcom/a/a/a/m;->l()Lcom/a/a/b/d;

    move-result-object v0

    .line 299
    invoke-direct {p1}, Lcom/a/a/a/m;->s()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 302
    invoke-virtual {v0, v2}, Lcom/a/a/b/d;->b(Z)Lcom/a/a/b/d;

    .line 310
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/a/a/a/m;->v()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 311
    iget-object v1, p0, Lcom/a/a/a/m;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 313
    invoke-virtual {v0, v2}, Lcom/a/a/b/d;->a(Z)Lcom/a/a/b/d;

    .line 314
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/a/m;->f:Ljava/util/List;

    .line 317
    :cond_1
    return-void

    .line 304
    :cond_2
    invoke-direct {p1}, Lcom/a/a/a/m;->t()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 307
    invoke-virtual {v0, v2}, Lcom/a/a/b/d;->c(Z)Lcom/a/a/b/d;

    goto :goto_0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/a/a/a/m;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/a/m;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/a/a/a/m;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 362
    invoke-direct {p0}, Lcom/a/a/a/m;->u()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 366
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    goto :goto_0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/a/a/a/m;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/a/m;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 386
    iget-object v0, p0, Lcom/a/a/a/m;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 388
    invoke-direct {p0}, Lcom/a/a/a/m;->v()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 390
    new-instance v0, Lcom/a/a/a/n;

    invoke-direct {v0, p0, v1}, Lcom/a/a/a/n;-><init>(Lcom/a/a/a/m;Ljava/util/Iterator;)V

    .line 412
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/a/a/a/m;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/a/a/a/m;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final l()Lcom/a/a/b/d;
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lcom/a/a/a/m;->g:Lcom/a/a/b/d;

    if-nez v0, :cond_0

    .line 545
    new-instance v0, Lcom/a/a/b/d;

    invoke-direct {v0}, Lcom/a/a/b/d;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/m;->g:Lcom/a/a/b/d;

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/a/a/a/m;->g:Lcom/a/a/b/d;

    return-object v0
.end method

.method public final m()Z
    .locals 1

    .prologue
    .line 566
    iget-boolean v0, p0, Lcom/a/a/a/m;->h:Z

    return v0
.end method

.method public final n()Z
    .locals 1

    .prologue
    .line 584
    iget-boolean v0, p0, Lcom/a/a/a/m;->i:Z

    return v0
.end method

.method public final o()Z
    .locals 1

    .prologue
    .line 602
    iget-boolean v0, p0, Lcom/a/a/a/m;->j:Z

    return v0
.end method

.method public final p()Z
    .locals 1

    .prologue
    .line 620
    iget-boolean v0, p0, Lcom/a/a/a/m;->k:Z

    return v0
.end method

.method public final q()Ljava/util/List;
    .locals 2

    .prologue
    .line 838
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/a/a/a/m;->u()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
