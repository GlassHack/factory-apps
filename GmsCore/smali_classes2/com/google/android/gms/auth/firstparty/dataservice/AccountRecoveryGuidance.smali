.class public Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/f;


# instance fields
.field final a:I

.field public final b:Ljava/lang/String;

.field public final c:Z

.field public final d:Z

.field public final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/f;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/f;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/f;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;ZZZ)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;->a:I

    .line 37
    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;->b:Ljava/lang/String;

    .line 38
    iput-boolean p3, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;->c:Z

    .line 39
    iput-boolean p4, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;->d:Z

    .line 40
    iput-boolean p5, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;->e:Z

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZZ)V
    .locals 6

    .prologue
    .line 48
    const/4 v1, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;-><init>(ILjava/lang/String;ZZZ)V

    .line 54
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 70
    invoke-static {p0, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/f;->a(Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;Landroid/os/Parcel;)V

    .line 71
    return-void
.end method
