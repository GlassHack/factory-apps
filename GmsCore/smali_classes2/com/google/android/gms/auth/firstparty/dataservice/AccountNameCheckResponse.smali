.class public Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/b;


# instance fields
.field final a:I

.field b:Ljava/lang/String;

.field c:Ljava/util/List;

.field d:Ljava/lang/String;

.field e:Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/b;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckResponse;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/b;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckResponse;->a:I

    .line 44
    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckResponse;->b:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckResponse;->c:Ljava/util/List;

    .line 46
    iput-object p4, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckResponse;->d:Ljava/lang/String;

    .line 47
    iput-object p5, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckResponse;->e:Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/auth/firstparty/shared/k;)V
    .locals 1

    .prologue
    .line 51
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckResponse;-><init>(Lcom/google/android/gms/auth/firstparty/shared/k;Ljava/util/List;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/auth/firstparty/shared/k;Ljava/lang/String;Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;Ljava/util/List;)V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckResponse;->a:I

    .line 68
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/shared/k;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckResponse;->b:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckResponse;->d:Ljava/lang/String;

    .line 70
    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckResponse;->e:Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckResponse;->c:Ljava/util/List;

    .line 73
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/auth/firstparty/shared/k;Ljava/util/List;)V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckResponse;-><init>(Lcom/google/android/gms/auth/firstparty/shared/k;Ljava/util/List;B)V

    .line 56
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/auth/firstparty/shared/k;Ljava/util/List;B)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, v0, v0, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckResponse;-><init>(Lcom/google/android/gms/auth/firstparty/shared/k;Ljava/lang/String;Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;Ljava/util/List;)V

    .line 60
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 80
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/b;->a(Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckResponse;Landroid/os/Parcel;I)V

    .line 81
    return-void
.end method
