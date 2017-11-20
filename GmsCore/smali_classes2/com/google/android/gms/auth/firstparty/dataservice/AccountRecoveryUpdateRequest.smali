.class public Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/i;


# instance fields
.field final a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Z

.field public final g:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/i;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/i;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/i;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/auth/firstparty/shared/AppDescription;)V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest;->a:I

    .line 123
    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest;->b:Ljava/lang/String;

    .line 124
    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest;->c:Ljava/lang/String;

    .line 125
    iput-object p4, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest;->d:Ljava/lang/String;

    .line 126
    iput-object p5, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest;->e:Ljava/lang/String;

    .line 127
    iput-boolean p6, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest;->f:Z

    .line 128
    iput-object p7, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest;->g:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    .line 129
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 144
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/i;->a(Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest;Landroid/os/Parcel;I)V

    .line 145
    return-void
.end method
