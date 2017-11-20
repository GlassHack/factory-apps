.class final Lcom/google/android/gms/analytics/aj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/analytics/ag;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/ag;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/google/android/gms/analytics/aj;->a:Lcom/google/android/gms/analytics/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/google/android/gms/analytics/aj;->a:Lcom/google/android/gms/analytics/ag;

    invoke-static {v0}, Lcom/google/android/gms/analytics/ag;->e(Lcom/google/android/gms/analytics/ag;)Lcom/google/android/gms/analytics/bl;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/analytics/bl;->d()V

    .line 287
    return-void
.end method
