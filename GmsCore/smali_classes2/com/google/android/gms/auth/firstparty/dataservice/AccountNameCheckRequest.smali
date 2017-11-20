.class public Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/a;


# instance fields
.field final a:I

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

.field f:Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/a;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;->a:I

    .line 40
    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/auth/firstparty/shared/AppDescription;Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;->a:I

    .line 56
    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;->b:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;->c:Ljava/lang/String;

    .line 58
    iput-object p4, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;->d:Ljava/lang/String;

    .line 59
    iput-object p5, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;->e:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    .line 60
    iput-object p6, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;->f:Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

    .line 61
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Lcom/google/android/gms/auth/firstparty/shared/AppDescription;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;->e:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;->f:Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 68
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/a;->a(Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;Landroid/os/Parcel;I)V

    .line 69
    return-void
.end method
