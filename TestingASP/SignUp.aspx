<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="TestingASP.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <!-- Section: Design Block -->
<section class="text-center text-lg-start">
  <style>
    .cascading-right {
      margin-right: -50px;
    }

    @media (max-width: 991.98px) {
      .cascading-right {
        margin-right: 0;
      }
    }
  </style>

  <!-- Jumbotron -->
  <div class="container py-4">
    <div class="row g-0 align-items-center">
      <div class="col-lg-6 mb-5 mb-lg-0">
        <div class="card cascading-right" style="
            background: hsla(0, 0%, 100%, 0.55);
            backdrop-filter: blur(30px);
            ">
          <div class="card-body p-5 shadow-5 text-center">
            <h2 class="fw-bold mb-5">Sign up now</h2>
            <form>
              <!-- 2 column grid layout with text inputs for the first and last names -->
              <div class="row">
                <div class="col-md-6 mb-4">
                  <div class="form-outline">                    
                      <asp:TextBox ID="FirstNameBox" class="form-control" runat="server"></asp:TextBox>
                    <label class="form-label" for="form3Example1">First name</label>
                  </div>
                </div>
                <div class="col-md-6 mb-4">
                  <div class="form-outline">
                    <asp:TextBox ID="LastNameBox" class="form-control" runat="server"></asp:TextBox>
                    <label class="form-label" for="form3Example2">Last name</label>
                  </div>
                </div>
              </div>



                  <!-- Pet name input -->
              <div class="row">
                <div class="col-md-6 mb-4">
                  <div class="form-outline">
                    <asp:TextBox ID="PetNameBox" class="form-control" runat="server"></asp:TextBox>
                    <label class="form-label" for="form3Example3">Pet name</label>
                  </div>
                </div>
                <div class="col-md-6 mb-4">
                  <div class="form-outline">
                    <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server">
                                            <asp:ListItem Text="Select" Value="Select"></asp:ListItem>
                                            <asp:ListItem Text="Golden Retriever" Value="Golden Retriever"></asp:ListItem>
                                            <asp:ListItem Text="Labrador" Value="Labrador"></asp:ListItem>
                                            <asp:ListItem Text="Bordercolly" Value="Bordercolly"></asp:ListItem>

                                        </asp:DropDownList>
                    <label class="dropdown-item" for="form3Example4">Breed</label>
                  </div>
                </div>
              </div>


          


                <div class="row">
                    <div class="col-md-6 mb-4">
                        <div class="form-outline">
                            <asp:TextBox ID="EmailBox" class="form-control" runat="server"></asp:TextBox>
                            <label class="form-label" for="form3Example5">Email address</label>
                        </div>
                    </div>
                    <div class="col-md-6 mb-4">
                        <div class="form-outline">
                            <asp:TextBox ID="PasswordBox" class="form-control" runat="server" TextMode="Password"></asp:TextBox>
                            <label class="form-label" for="form3Example6">Password</label>
                        </div>
                    </div>
                </div>




                <!-- Checkbox -->
              <div class="form-check d-flex justify-content-center mb-4">
                <input class="form-check-input me-2" type="checkbox" value="" id="form2Example33" checked />
                <label class="form-check-label" for="form2Example33">
                  Subscribe to our newsletter
                </label>
              </div>

              <!-- Submit button -->
             
                <asp:LinkButton class="btn btn-primary btn-block mb-4" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Sign Up</asp:LinkButton>


              <!-- Register buttons -->
              <div class="text-center">
                <p>or sign up with:</p>
                <button type="button" class="btn btn-link btn-floating mx-1">
                  <i class="fab fa-facebook-f"></i>
                </button>

                <button type="button" class="btn btn-link btn-floating mx-1">
                  <i class="fab fa-google"></i>
                </button>

                <button type="button" class="btn btn-link btn-floating mx-1">
                  <i class="fab fa-twitter"></i>
                </button>

                <button type="button" class="btn btn-link btn-floating mx-1">
                  <i class="fab fa-github"></i>
                </button>
              </div>
            </form>
          </div>
        </div>
      </div>

      <div class="col-lg-6 mb-5 mb-lg-0">
        <%--<img src="https://mdbootstrap.com/img/new/ecommerce/vertical/007.jpg" class="w-100 rounded-4 shadow-4"
          alt="" />--%>
          <img src="img/golden2.jpg" class="w-100 rounded-4 shadow-4"
          alt="" />
      </div>
    </div>
  </div>
  <!-- Jumbotron -->
</section>
<!-- Section: Design Block -->




</asp:Content>
