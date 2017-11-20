.class final Lcom/google/android/gms/auth/otp/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:[Landroid/accounts/Account;

.field final synthetic b:Lcom/google/android/gms/auth/otp/d;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/otp/d;[Landroid/accounts/Account;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/android/gms/auth/otp/e;->b:Lcom/google/android/gms/auth/otp/d;

    iput-object p2, p0, Lcom/google/android/gms/auth/otp/e;->a:[Landroid/accounts/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/gms/auth/otp/e;->b:Lcom/google/android/gms/auth/otp/d;

    iget-object v1, p0, Lcom/google/android/gms/auth/otp/e;->a:[Landroid/accounts/Account;

    aget-object v1, v1, p3

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/otp/d;->a(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    .prologue
    .line 79
    return-void
.end method
