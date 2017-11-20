.class public final Lcom/google/android/location/reporting/config/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroid/accounts/Account;

.field b:Ljava/lang/Long;

.field c:Ljava/lang/Boolean;

.field d:Ljava/lang/Boolean;

.field e:Ljava/lang/Boolean;

.field f:Ljava/lang/Boolean;

.field g:Ljava/lang/Boolean;

.field h:Ljava/lang/Long;

.field i:Ljava/lang/Integer;

.field j:Ljava/lang/Boolean;

.field k:Ljava/lang/Boolean;

.field l:Ljava/lang/Boolean;

.field m:Lcom/google/android/location/reporting/config/Conditions;

.field n:Ljava/lang/Integer;


# direct methods
.method private constructor <init>(Landroid/accounts/Account;)V
    .locals 1

    .prologue
    .line 592
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 593
    const-string v0, "null account"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    iput-object p1, p0, Lcom/google/android/location/reporting/config/a;->a:Landroid/accounts/Account;

    .line 595
    return-void
.end method

.method synthetic constructor <init>(Landroid/accounts/Account;B)V
    .locals 0

    .prologue
    .line 561
    invoke-direct {p0, p1}, Lcom/google/android/location/reporting/config/a;-><init>(Landroid/accounts/Account;)V

    return-void
.end method
