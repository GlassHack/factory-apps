.class final Lcom/google/android/gms/common/api/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/s;


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/n;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/n;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/google/android/gms/common/api/o;->a:Lcom/google/android/gms/common/api/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/u;)V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/google/android/gms/common/api/o;->a:Lcom/google/android/gms/common/api/n;

    iget-object v0, v0, Lcom/google/android/gms/common/api/n;->k:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 241
    return-void
.end method
