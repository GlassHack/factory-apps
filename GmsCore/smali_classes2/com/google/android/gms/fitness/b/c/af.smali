.class public final Lcom/google/android/gms/fitness/b/c/af;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/android/gms/fitness/b/b/u;

.field final b:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/b/b/u;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/b/c/af;->b:Ljava/util/List;

    .line 46
    iput-object p1, p0, Lcom/google/android/gms/fitness/b/c/af;->a:Lcom/google/android/gms/fitness/b/b/u;

    .line 47
    return-void
.end method
