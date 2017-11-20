.class public Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/n;


# instance fields
.field callingAppDescription:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

.field firstName:Ljava/lang/String;

.field lastName:Ljava/lang/String;

.field final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/n;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/n;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/n;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameRequest;->version:I

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/auth/firstparty/shared/AppDescription;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "callingAppDescription"    # Lcom/google/android/gms/auth/firstparty/shared/AppDescription;
    .param p3, "firstName"    # Ljava/lang/String;
    .param p4, "lastName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameRequest;->version:I

    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameRequest;->callingAppDescription:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameRequest;->firstName:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameRequest;->lastName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCallingAppDescription()Lcom/google/android/gms/auth/firstparty/shared/AppDescription;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameRequest;->callingAppDescription:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameRequest;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameRequest;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method public setCallingAppDescription(Lcom/google/android/gms/auth/firstparty/shared/AppDescription;)Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameRequest;
    .locals 0
    .param p1, "appDescription"    # Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameRequest;->callingAppDescription:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    return-object p0
.end method

.method public setFirstName(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameRequest;
    .locals 0
    .param p1, "firstName"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameRequest;->firstName:Ljava/lang/String;

    return-object p0
.end method

.method public setLastName(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameRequest;
    .locals 0
    .param p1, "lastName"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameRequest;->lastName:Ljava/lang/String;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/n;->a(Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameRequest;Landroid/os/Parcel;I)V

    return-void
.end method
