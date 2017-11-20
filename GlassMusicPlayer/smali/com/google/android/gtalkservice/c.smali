.class final Lcom/google/android/gtalkservice/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/os/Parcel;)Lcom/google/android/gtalkservice/GroupChatInvitation;
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lcom/google/android/gtalkservice/GroupChatInvitation;

    invoke-direct {v0, p0}, Lcom/google/android/gtalkservice/GroupChatInvitation;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method private static a(I)[Lcom/google/android/gtalkservice/GroupChatInvitation;
    .locals 1

    .prologue
    .line 85
    new-array v0, p0, [Lcom/google/android/gtalkservice/GroupChatInvitation;

    return-object v0
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 79
    invoke-static {p1}, Lcom/google/android/gtalkservice/c;->a(Landroid/os/Parcel;)Lcom/google/android/gtalkservice/GroupChatInvitation;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 79
    invoke-static {p1}, Lcom/google/android/gtalkservice/c;->a(I)[Lcom/google/android/gtalkservice/GroupChatInvitation;

    move-result-object v0

    return-object v0
.end method
