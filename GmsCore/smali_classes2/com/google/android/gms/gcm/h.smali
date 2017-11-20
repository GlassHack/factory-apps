.class final Lcom/google/android/gms/gcm/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/gcm/g;


# direct methods
.method constructor <init>(Lcom/google/android/gms/gcm/g;)V
    .locals 0

    .prologue
    .line 298
    iput-object p1, p0, Lcom/google/android/gms/gcm/h;->a:Lcom/google/android/gms/gcm/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/google/android/gms/gcm/h;->a:Lcom/google/android/gms/gcm/g;

    invoke-static {v0}, Lcom/google/android/gms/gcm/g;->a(Lcom/google/android/gms/gcm/g;)V

    .line 302
    return-void
.end method
