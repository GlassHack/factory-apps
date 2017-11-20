.class public final Lcom/google/android/gms/maps/model/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/android/gms/e/i;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/e/i;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/e/i;

    iput-object v0, p0, Lcom/google/android/gms/maps/model/a;->a:Lcom/google/android/gms/e/i;

    .line 33
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/e/i;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/gms/maps/model/a;->a:Lcom/google/android/gms/e/i;

    return-object v0
.end method
