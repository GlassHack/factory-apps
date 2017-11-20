.class final Lcom/google/android/gms/auth/otp/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/otp/OtpActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/otp/OtpActivity;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/android/gms/auth/otp/a;->a:Lcom/google/android/gms/auth/otp/OtpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/gms/auth/otp/a;->a:Lcom/google/android/gms/auth/otp/OtpActivity;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/otp/OtpActivity;->finish()V

    .line 58
    return-void
.end method
