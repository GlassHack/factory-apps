.class public final Lcom/google/maps/api/android/lib6/gmm6/l/cm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/gmm6/l/cl;


# static fields
.field private static c:Lcom/google/maps/api/android/lib6/gmm6/l/p;


# instance fields
.field private a:Ljava/util/List;

.field private b:Lcom/google/maps/api/android/lib6/gmm6/l/p;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/high16 v1, -0x80000000

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v0, v1, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(II)V

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/l/p;

    invoke-direct {v1, v0, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/p;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    sput-object v1, Lcom/google/maps/api/android/lib6/gmm6/l/cm;->c:Lcom/google/maps/api/android/lib6/gmm6/l/p;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cm;->a:Ljava/util/List;

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/l/cm;->c:Lcom/google/maps/api/android/lib6/gmm6/l/p;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cm;->b:Lcom/google/maps/api/android/lib6/gmm6/l/p;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/c/c/fx;->c(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cm;->a:Ljava/util/List;

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/l/cm;->c:Lcom/google/maps/api/android/lib6/gmm6/l/p;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cm;->b:Lcom/google/maps/api/android/lib6/gmm6/l/p;

    return-void
.end method

.method private constructor <init>(Ljava/util/Collection;)V
    .locals 2

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/cm;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/cl;

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/cm;->a(Lcom/google/maps/api/android/lib6/gmm6/l/cl;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs constructor <init>([Lcom/google/maps/api/android/lib6/gmm6/l/cl;)V
    .locals 1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/cm;-><init>(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/maps/api/android/lib6/gmm6/l/p;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cm;->b:Lcom/google/maps/api/android/lib6/gmm6/l/p;

    return-object v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/cl;)V
    .locals 3

    invoke-interface {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/cl;->a()Lcom/google/maps/api/android/lib6/gmm6/l/p;

    move-result-object v0

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/l/cm;->c:Lcom/google/maps/api/android/lib6/gmm6/l/p;

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cm;->b:Lcom/google/maps/api/android/lib6/gmm6/l/p;

    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/l/cm;->c:Lcom/google/maps/api/android/lib6/gmm6/l/p;

    if-ne v1, v2, :cond_1

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/l/p;

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/l/p;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v2

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/l/p;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/p;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cm;->b:Lcom/google/maps/api/android/lib6/gmm6/l/p;

    :goto_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cm;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cm;->b:Lcom/google/maps/api/android/lib6/gmm6/l/p;

    invoke-virtual {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->a(Lcom/google/maps/api/android/lib6/gmm6/l/p;)V

    goto :goto_1
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cm;->b:Lcom/google/maps/api/android/lib6/gmm6/l/p;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    move v1, v2

    :goto_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cm;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cm;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/cl;

    invoke-interface {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/l/cl;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/q;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/q;->a()Lcom/google/maps/api/android/lib6/gmm6/l/p;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cm;->b:Lcom/google/maps/api/android/lib6/gmm6/l/p;

    invoke-virtual {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->a(Lcom/google/maps/api/android/lib6/gmm6/l/q;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    move v1, v2

    :goto_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cm;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cm;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/cl;

    invoke-interface {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/l/cl;->a(Lcom/google/maps/api/android/lib6/gmm6/l/q;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method
