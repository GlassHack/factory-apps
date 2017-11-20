.class final Lcom/google/maps/api/android/lib6/gmm6/m/c/b;
.super Ljava/lang/Object;


# instance fields
.field a:Z

.field b:I

.field c:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

.field d:Ljava/util/LinkedHashSet;

.field e:Ljava/util/LinkedHashSet;

.field f:Ljava/util/Iterator;

.field synthetic g:Lcom/google/maps/api/android/lib6/gmm6/m/c/a;


# direct methods
.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/m/c/a;Z)V
    .locals 1

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/b;->g:Lcom/google/maps/api/android/lib6/gmm6/m/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/b;->b:I

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/b;->d:Ljava/util/LinkedHashSet;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/b;->e:Ljava/util/LinkedHashSet;

    iput-boolean p2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/b;->a:Z

    return-void
.end method
