.class public Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/shared/j;


# instance fields
.field final a:I

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/util/List;

.field public h:Lcom/google/android/gms/auth/firstparty/shared/FACLData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/j;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/shared/j;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;->CREATOR:Lcom/google/android/gms/auth/firstparty/shared/j;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/android/gms/auth/firstparty/shared/FACLData;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p1, p0, Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;->a:I

    .line 53
    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;->b:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;->c:Ljava/lang/String;

    .line 55
    iput-object p4, p0, Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;->d:Ljava/lang/String;

    .line 56
    iput-object p5, p0, Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;->e:Ljava/lang/String;

    .line 57
    iput-object p6, p0, Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;->f:Ljava/lang/String;

    .line 58
    iput-object p7, p0, Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;->g:Ljava/util/List;

    .line 59
    iput-object p8, p0, Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;->h:Lcom/google/android/gms/auth/firstparty/shared/FACLData;

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/auth/firstparty/shared/FACLData;Ljava/util/List;)V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;->a:I

    .line 71
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;->f:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;->b:Ljava/lang/String;

    .line 73
    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;->c:Ljava/lang/String;

    .line 74
    iput-object p4, p0, Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;->d:Ljava/lang/String;

    .line 75
    iput-object p5, p0, Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;->e:Ljava/lang/String;

    .line 76
    iput-object p6, p0, Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;->h:Lcom/google/android/gms/auth/firstparty/shared/FACLData;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;->g:Ljava/util/List;

    .line 78
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;->g:Ljava/util/List;

    invoke-interface {v0, p7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 79
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;->g:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;->d:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;->f:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 86
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/shared/j;->a(Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;Landroid/os/Parcel;I)V

    .line 87
    return-void
.end method
