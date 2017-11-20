.class public Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/auth/RecoveryResponse;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData$Builder;
    }
.end annotation


# static fields
.field public static final ACTION_NONE:I = 0x3

.field public static final ACTION_REQUEST_RECOVERY_INFO:I = 0x1

.field public static final ACTION_VERIFY_RECOVERY_INFO:I = 0x2

.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/c;

.field public static final DETAIL_EMAIL_AND_PHONE:I = 0x3eb

.field public static final DETAIL_EMAIL_ONLY:I = 0x3e9

.field public static final DETAIL_PHONE_ONLY:I = 0x3ea


# instance fields
.field public final accountName:Ljava/lang/String;

.field public final action:Ljava/lang/String;

.field public final allowedRecoveryOption:Ljava/lang/String;

.field public final countries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/auth/Country;",
            ">;"
        }
    .end annotation
.end field

.field public final defaultCountryCode:Ljava/lang/String;

.field public final error:Ljava/lang/String;

.field public final guidance:Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;

.field public final phoneNumber:Ljava/lang/String;

.field public final secondaryEmail:Ljava/lang/String;

.field public final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/c;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/c;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "guidance"    # Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "detail"    # Ljava/lang/String;
    .param p5, "accountName"    # Ljava/lang/String;
    .param p6, "secondaryEmail"    # Ljava/lang/String;
    .param p7, "phoneNumber"    # Ljava/lang/String;
    .param p9, "defaultCountryCode"    # Ljava/lang/String;
    .param p10, "error"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/auth/Country;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p8, "countries":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/auth/Country;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;->version:I

    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;->guidance:Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;

    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;->action:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;->allowedRecoveryOption:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;->accountName:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;->secondaryEmail:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;->phoneNumber:Ljava/lang/String;

    if-nez p8, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;->countries:Ljava/util/List;

    iput-object p9, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;->defaultCountryCode:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;->error:Ljava/lang/String;

    return-void

    :cond_0
    invoke-static {p8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/c;->a(Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;Landroid/os/Parcel;I)V

    return-void
.end method
