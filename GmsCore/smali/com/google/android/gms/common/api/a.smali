.class public final Lcom/google/android/gms/common/api/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/android/gms/common/api/c;

.field final b:Lcom/google/android/gms/common/api/d;

.field public final c:Ljava/util/ArrayList;


# direct methods
.method public varargs constructor <init>(Lcom/google/android/gms/common/api/c;Lcom/google/android/gms/common/api/d;[Lcom/google/android/gms/common/api/ac;)V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/google/android/gms/common/api/a;->a:Lcom/google/android/gms/common/api/c;

    .line 46
    iput-object p2, p0, Lcom/google/android/gms/common/api/a;->b:Lcom/google/android/gms/common/api/d;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/a;->c:Ljava/util/ArrayList;

    .line 48
    return-void
.end method
