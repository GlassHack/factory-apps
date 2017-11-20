.class public final Lcom/google/maps/api/android/lib6/gmm6/l/bo;
.super Ljava/lang/Object;


# static fields
.field private static final a:[Ljava/lang/Integer;


# instance fields
.field private b:Lcom/google/maps/api/android/lib6/a/a/a;

.field private c:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Integer;

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/l/bo;->a:[Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bo;->c:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/maps/api/android/lib6/gmm6/l/bn;
    .locals 4

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bo;->c:Ljava/util/Set;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bo;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    :cond_0
    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/l/bn;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bo;->b:Lcom/google/maps/api/android/lib6/a/a/a;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bo;->c:Ljava/util/Set;

    sget-object v3, Lcom/google/maps/api/android/lib6/gmm6/l/bo;->a:[Ljava/lang/Integer;

    invoke-interface {v0, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    invoke-direct {v1, v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/bn;-><init>(Lcom/google/maps/api/android/lib6/a/a/a;[Ljava/lang/Integer;)V

    return-object v1
.end method

.method public final a(I)Lcom/google/maps/api/android/lib6/gmm6/l/bo;
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bo;->c:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/a/a/a;)Lcom/google/maps/api/android/lib6/gmm6/l/bo;
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bo;->b:Lcom/google/maps/api/android/lib6/a/a/a;

    return-object p0
.end method
