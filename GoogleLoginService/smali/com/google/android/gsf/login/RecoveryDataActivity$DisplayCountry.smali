.class public Lcom/google/android/gsf/login/RecoveryDataActivity$DisplayCountry;
.super Ljava/lang/Object;
.source "RecoveryDataActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/login/RecoveryDataActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisplayCountry"
.end annotation


# instance fields
.field public final code:Ljava/lang/String;

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;

    .prologue
    .line 498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 499
    iput-object p1, p0, Lcom/google/android/gsf/login/RecoveryDataActivity$DisplayCountry;->name:Ljava/lang/String;

    .line 500
    iput-object p2, p0, Lcom/google/android/gsf/login/RecoveryDataActivity$DisplayCountry;->code:Ljava/lang/String;

    .line 501
    return-void
.end method
