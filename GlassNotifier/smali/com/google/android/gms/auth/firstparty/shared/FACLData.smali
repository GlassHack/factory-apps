.class public Lcom/google/android/gms/auth/firstparty/shared/FACLData;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/shared/f;


# instance fields
.field Jq:Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;

.field Jr:Ljava/lang/String;

.field Js:Z

.field Jt:Ljava/lang/String;

.field final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/f;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/shared/f;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/shared/FACLData;->CREATOR:Lcom/google/android/gms/auth/firstparty/shared/f;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/auth/firstparty/shared/FACLConfig;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "faclConfig"    # Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;
    .param p3, "activityText"    # Ljava/lang/String;
    .param p4, "isSpeedbumpNeeded"    # Z
    .param p5, "speedbumpText"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLData;->version:I

    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLData;->Jq:Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;

    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLData;->Jr:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLData;->Js:Z

    iput-object p5, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLData;->Jt:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "faclConfig"    # Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;
    .param p2, "activityText"    # Ljava/lang/String;
    .param p3, "speedbumpText"    # Ljava/lang/String;
    .param p4, "isSpeedbumpNeeded"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLData;->version:I

    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLData;->Jq:Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;

    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLData;->Jr:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLData;->Jt:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLData;->Js:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getActivityText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLData;->Jr:Ljava/lang/String;

    return-object v0
.end method

.method public getFaclConfig()Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLData;->Jq:Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;

    return-object v0
.end method

.method public getSpeedbumpText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLData;->Jt:Ljava/lang/String;

    return-object v0
.end method

.method public isSpeedbumpNeeded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLData;->Js:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/shared/f;->a(Lcom/google/android/gms/auth/firstparty/shared/FACLData;Landroid/os/Parcel;I)V

    return-void
.end method
