.class public final Lcom/google/maps/api/android/lib6/c/ak;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/ak;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method final a(Lcom/google/maps/api/android/lib6/c/al;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ak;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final b(Lcom/google/maps/api/android/lib6/c/al;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ak;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
