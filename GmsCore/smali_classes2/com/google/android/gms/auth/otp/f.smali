.class final Lcom/google/android/gms/auth/otp/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/otp/d;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/otp/d;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/google/android/gms/auth/otp/f;->a:Lcom/google/android/gms/auth/otp/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/gms/auth/otp/f;->a:Lcom/google/android/gms/auth/otp/d;

    iget-object v0, v0, Lcom/google/android/gms/auth/otp/d;->b:Lcom/google/android/gms/auth/otp/h;

    invoke-interface {v0}, Lcom/google/android/gms/auth/otp/h;->a()V

    .line 88
    return-void
.end method
