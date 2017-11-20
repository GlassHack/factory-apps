.class final Lcom/google/android/gms/auth/api/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final synthetic c:Lcom/google/android/gms/auth/api/k;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/auth/api/k;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 724
    iput-object p1, p0, Lcom/google/android/gms/auth/api/p;->c:Lcom/google/android/gms/auth/api/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 725
    iput-object p2, p0, Lcom/google/android/gms/auth/api/p;->a:Ljava/lang/String;

    .line 726
    invoke-virtual {p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/api/p;->b:Ljava/lang/String;

    .line 727
    return-void
.end method
