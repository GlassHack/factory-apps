.class public abstract Lcom/google/maps/api/android/lib6/gmm6/o/c/b/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/gmm6/o/c/b/h;


# instance fields
.field final a:Ljava/util/Set;

.field protected b:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/i;->b:Ljava/util/List;

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/i;->a:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract b()I
.end method
