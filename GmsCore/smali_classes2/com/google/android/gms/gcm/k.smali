.class final Lcom/google/android/gms/gcm/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/gcm/l;

.field final synthetic b:Lcom/google/android/gms/gcm/g;


# direct methods
.method constructor <init>(Lcom/google/android/gms/gcm/g;Lcom/google/android/gms/gcm/l;)V
    .locals 0

    .prologue
    .line 1221
    iput-object p1, p0, Lcom/google/android/gms/gcm/k;->b:Lcom/google/android/gms/gcm/g;

    iput-object p2, p0, Lcom/google/android/gms/gcm/k;->a:Lcom/google/android/gms/gcm/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 1224
    iget-object v0, p0, Lcom/google/android/gms/gcm/k;->a:Lcom/google/android/gms/gcm/l;

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/l;->a()V

    .line 1225
    return-void
.end method
