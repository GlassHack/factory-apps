.class final Lcom/google/android/gms/auth/otp/b;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/otp/OtpActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/otp/OtpActivity;Landroid/content/Context;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 86
    iput-object p1, p0, Lcom/google/android/gms/auth/otp/b;->a:Lcom/google/android/gms/auth/otp/OtpActivity;

    const v0, 0x1090003

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 89
    if-nez p1, :cond_1

    .line 90
    iget-object v0, p0, Lcom/google/android/gms/auth/otp/b;->a:Lcom/google/android/gms/auth/otp/OtpActivity;

    invoke-static {v0}, Lcom/google/android/gms/auth/otp/OtpActivity;->a(Lcom/google/android/gms/auth/otp/OtpActivity;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/google/android/gms/auth/otp/b;->a:Lcom/google/android/gms/auth/otp/OtpActivity;

    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/google/android/gms/auth/otp/b;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/auth/otp/OtpActivity;->a(Lcom/google/android/gms/auth/otp/OtpActivity;Landroid/view/View;)Landroid/view/View;

    .line 92
    iget-object v0, p0, Lcom/google/android/gms/auth/otp/b;->a:Lcom/google/android/gms/auth/otp/OtpActivity;

    invoke-static {v0}, Lcom/google/android/gms/auth/otp/OtpActivity;->a(Lcom/google/android/gms/auth/otp/OtpActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/google/android/gms/auth/otp/b;->a:Lcom/google/android/gms/auth/otp/OtpActivity;

    invoke-static {v0}, Lcom/google/android/gms/auth/otp/OtpActivity;->a(Lcom/google/android/gms/auth/otp/OtpActivity;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/auth/otp/b;->a:Lcom/google/android/gms/auth/otp/OtpActivity;

    invoke-static {v0}, Lcom/google/android/gms/auth/otp/OtpActivity;->a(Lcom/google/android/gms/auth/otp/OtpActivity;)Landroid/view/View;

    move-result-object v0

    .line 100
    :goto_0
    return-object v0

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/auth/otp/b;->a:Lcom/google/android/gms/auth/otp/OtpActivity;

    invoke-static {v0}, Lcom/google/android/gms/auth/otp/OtpActivity;->a(Lcom/google/android/gms/auth/otp/OtpActivity;)Landroid/view/View;

    move-result-object v0

    if-ne p2, v0, :cond_2

    .line 98
    const/4 p2, 0x0

    .line 100
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method
