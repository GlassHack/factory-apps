.class final Lcom/google/android/gms/gcm/av;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/gcm/au;


# direct methods
.method constructor <init>(Lcom/google/android/gms/gcm/au;)V
    .locals 0

    .prologue
    .line 550
    iput-object p1, p0, Lcom/google/android/gms/gcm/av;->a:Lcom/google/android/gms/gcm/au;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/google/android/gms/gcm/av;->a:Lcom/google/android/gms/gcm/au;

    invoke-static {v0}, Lcom/google/android/gms/gcm/au;->a(Lcom/google/android/gms/gcm/au;)Lcom/google/android/gms/gcm/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/g;->d()I

    .line 555
    return-void
.end method
