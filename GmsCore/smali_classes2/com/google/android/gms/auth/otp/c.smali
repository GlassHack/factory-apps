.class final Lcom/google/android/gms/auth/otp/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Landroid/widget/AdapterView$OnItemSelectedListener;

.field final synthetic b:Lcom/google/android/gms/auth/otp/OtpActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/otp/OtpActivity;Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/google/android/gms/auth/otp/c;->b:Lcom/google/android/gms/auth/otp/OtpActivity;

    iput-object p2, p0, Lcom/google/android/gms/auth/otp/c;->a:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    .prologue
    .line 107
    if-nez p3, :cond_0

    .line 111
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/auth/otp/c;->a:Landroid/widget/AdapterView$OnItemSelectedListener;

    add-int/lit8 v3, p3, -0x1

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/gms/auth/otp/c;->a:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-interface {v0, p1}, Landroid/widget/AdapterView$OnItemSelectedListener;->onNothingSelected(Landroid/widget/AdapterView;)V

    .line 116
    return-void
.end method
