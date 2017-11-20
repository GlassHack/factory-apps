.class public Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/t;


# instance fields
.field final a:I

.field b:Ljava/lang/String;

.field c:Z

.field public d:Ljava/util/List;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/t;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/t;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountData;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/t;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountData;->a:I

    .line 60
    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountData;->b:Ljava/lang/String;

    .line 61
    iput-boolean p3, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountData;->c:Z

    .line 62
    iput-object p4, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountData;->d:Ljava/util/List;

    .line 63
    iput-object p5, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountData;->e:Ljava/lang/String;

    .line 64
    iput-object p6, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountData;->f:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountData;->a:I

    .line 74
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountData;->b:Ljava/lang/String;

    .line 75
    iput-boolean p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountData;->c:Z

    .line 76
    if-nez p3, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountData;->d:Ljava/util/List;

    .line 79
    iput-object p4, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountData;->e:Ljava/lang/String;

    .line 80
    iput-object p5, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountData;->f:Ljava/lang/String;

    .line 81
    return-void

    .line 76
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountData;->c:Z

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 88
    invoke-static {p0, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/t;->a(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountData;Landroid/os/Parcel;)V

    .line 89
    return-void
.end method
